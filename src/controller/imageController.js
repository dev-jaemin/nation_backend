import express from "express";
import multer from "multer";
import path from "path";
import imageService from "../service/imageService.js";

let name;
let ext;
// storage setting for file
const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, "public/image");
    },
    filename: (req, file, cb) => {
        ext = path.extname(file.originalname);
        name = Date.now();
        cb(null, name + ext); // 파일 원본이름 저장
    },
});

const upload = multer({ storage: storage }); // 미들웨어 생성

const router = express.Router();

const params = {
    name: "",
    gender: "",
    testName: "",
    fileName: "",
    ext: "",
};
router.post("/", upload.single("img"), async (req, res, next) => {
    const host = ["http://aitest.com:3000", "http://192.249.19.184:443", "http://domain.com:443"];
    if (!host.includes(req.headers.origin)) return;

    params.name = name + ext;
    params.gender = req.query.gender;
    params.testName = req.query.testName;
    params.fileName = name;
    params.ext = ext;

    let rows = await imageService.uploadImage(params, res, next);
    console.log(req.headers.origin);
    const header = {
        "Access-Control-Allow-Origin": `${req.headers.origin}`,
        "Access-Control-Allow-Credentials": true,
    };

    return res.header(header).json(rows);
});

export default router;

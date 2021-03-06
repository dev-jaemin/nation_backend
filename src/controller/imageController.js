import express from "express";
import multer from "multer";
import path from "path";
import imageService from "../service/imageService.js";

let name;
let ext;
// storage setting for file
function checkFileName(str) {
    var ext_temp = str.split(".").pop().toLowerCase();
}
const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, "public/image");
    },
    filename: (req, file, cb) => {
        // ext = path.extname(file.originalname);
        checkFileName(file.originalname);
        ext = ".jpg";
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
    const header = {
        "Access-Control-Allow-Origin": "",
        "Access-Control-Allow-Credentials": true,
    };
    const host = [
        "https://aitest.com:443",
        "https://192.249.19.184",
        "https://192.249.19.184:443",
        "https://an-al-yst.vercel.app",
        "https://an-al-yst.netlify.app",
        "https://an-al-yst.netlify.app/",

        "http://aitest.com:443",
        "http://192.249.19.184",
        "http://192.249.19.184:443",
        "http://an-al-yst.vercel.app",
        "http://an-al-yst.netlify.app",
        "http://an-al-yst.netlify.app/",
    ];
    console.log(req.headers.origin);
    if (host.includes(req.headers.origin)) header["Access-Control-Allow-Origin"] = req.headers.origin;

    params.name = name + ext;
    params.gender = req.query.gender;
    params.testName = req.query.testName;
    params.fileName = name;
    params.ext = ext;

    let rows = await imageService.uploadImage(params, res, next);

    return res.header(header).json(rows);
});

export default router;

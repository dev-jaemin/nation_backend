import express from "express";
import multer from "multer";
import path from "path";
import imageService from "../service/imageService.js";

let name;
// storage setting for file
const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, "public/image");
    },
    filename: (req, file, cb) => {
        let ext = path.extname(file.originalname);
        name = path.basename(file.originalname, ext) + Date.now() + ext;
        cb(null, name); // 파일 원본이름 저장
    },
});

const upload = multer({ storage: storage }); // 미들웨어 생성

const router = express.Router();
const params = {
    name: "",
    gender: "",
    testName: "",
};
router.post("/", upload.single("img"), async (req, res, next) => {
    params.gender = req.query.gender;
    params.testName = req.query.testName;
    let rows = await imageService.uploadImage(params, res, next);
    return res.json(rows);
});

export default router;

import express from "express";
import multer from "multer";
import imageService from "../service/imageService.js";

// storage setting for file
const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, "public/image");
    },
    filename: (req, file, cb) => {
        cb(null, Date.now() + "-" + file.originalname); // 파일 원본이름 저장
    },
});
const upload = multer({ storage: storage }); // 미들웨어 생성

const router = express.Router();

router.post("/", upload.single("img"), async (req, res, next) => {
    await imageService.uploadImage(req, res, next);
});

export default router;

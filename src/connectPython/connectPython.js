import child_process, { spawnSync } from "child_process";
import { response } from "express";
import fs from "fs";
import query from "../queries/board-query.js";
import pool from "../database/pool.js";

const connectPython = {
    getNation: async (path) => {
        const spawnSync = child_process.spawnSync;
        const result = spawnSync("python", ["./src/anAlyst/kerasModel.py", "./public/image/" + path]);

        let slicing = result.stdout.toString().slice(147).slice(0, -2);
        fs.unlink("./public/image/" + path, function () {});
        //한글로 class이름 작성시 아래 정규표현식으로 class이름만 뽑을 수 있음
        // return result.stdout.toString().replace(/[^\uAC00-\uD7AF\u1100-\u11FF\u3130-\u318F]/gi, "");
        // let data = await pool.query(query.getContent, [slicing]);
        return slicing;
    },
    getRegion: async (path) => {
        const spawnSync = child_process.spawnSync;
        const result = spawnSync("python", ["./src/region/anAlyst/kerasModel.py", "./public/image/" + path]);

        let slicing = result.stdout.toString().slice(147).slice(0, -2);
        fs.unlink("./public/image/" + path, function () {});
        //한글로 class이름 작성시 아래 정규표현식으로 class이름만 뽑을 수 있음
        // return result.stdout.toString().replace(/[^\uAC00-\uD7AF\u1100-\u11FF\u3130-\u318F]/gi, "");
        let data = await pool.query(query.getContent, [slicing, gender]);
        return slicing;
    },
    getHairstyle: async (path) => {
        const spawnSync = child_process.spawnSync;
        const result = spawnSync("python", ["./src/hairStyle/anAlyst/kerasModel.py", "./public/image/" + path]);

        let slicing = result.stdout.toString().slice(147).slice(0, -2);
        fs.unlink("./public/image/" + path, function () {});
        //한글로 class이름 작성시 아래 정규표현식으로 class이름만 뽑을 수 있음
        // return result.stdout.toString().replace(/[^\uAC00-\uD7AF\u1100-\u11FF\u3130-\u318F]/gi, "");
        let data = await pool.query(query.getContent, [slicing]);
        return slicing;
    },
    getGlasses: async (path) => {
        const spawnSync = child_process.spawnSync;
        const result = spawnSync("python", ["./src/glasses/anAlyst/kerasModel.py", "./public/image/" + path]);

        let slicing = result.stdout.toString().slice(147).slice(0, -2);
        fs.unlink("./public/image/" + path, function () {});
        //한글로 class이름 작성시 아래 정규표현식으로 class이름만 뽑을 수 있음
        // return result.stdout.toString().replace(/[^\uAC00-\uD7AF\u1100-\u11FF\u3130-\u318F]/gi, "");
        let data = await pool.query(query.getContent, [slicing]);
        return slicing;
    },
    s,
};

export default connectPython;

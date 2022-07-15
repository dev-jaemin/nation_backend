import child_process, { spawnSync } from "child_process";
import { response } from "express";
import fs from "fs";
import query from "../queries/board-query.js";
import pool from "../database/pool.js";

const connectPython = {
    getContent: async (params) => {
        // params.gender == woman
        const pyResult = child_process.spawnSync("python", [
            `./src/anAlyst/kerasModel.py`,
            "./public/image/" + params.name,
            params.testName + "-" + params.gender,
        ]);

        let className = pyResult.stdout.toString().slice(147).slice(0, -2);

        fs.unlink("./public/image/" + params.name, function () {});
        // let data = await pool.query(query.getContent, [params.testName, className, params.gender]);
        let data = await pool.query(query.getContent, [className, params.gender]);
        let result = {
            gender: data[0][0].gender,
            class: data[0][0].class,
            content: data[0][0][params.testName],
        };
        return result;
    },
};

export default connectPython;

//한글로 class이름 작성시 아래 정규표현식으로 class이름만 뽑을 수 있음
// return result.stdout.toString().replace(/[^\uAC00-\uD7AF\u1100-\u11FF\u3130-\u318F]/gi, "");

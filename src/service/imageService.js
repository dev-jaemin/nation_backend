import connectPython from "../connectPython/connectPython.js";

//분기
const imageService = {
    uploadImage: async (req, res, next) => {
        const result = {
            name: "",
        };
        console.log(req.name);
        console.log(req.testName);
        console.log(req.gender);
        result.name = await connectPython.getNation(req.name);
        return result;
    },
};

export default imageService;

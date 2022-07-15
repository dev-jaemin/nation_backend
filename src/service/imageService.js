import connectPython from "../connectPython/connectPython.js";

const imageService = {
    uploadImage: async (req, res, next) => {
        let result = await connectPython.getContent(req);
        return result;
    },
};

export default imageService;

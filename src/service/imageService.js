import connectPython from "../connectPython/connectPython.js";

const imageService = {
    uploadImage: async (req, res, next) => {
        const result = {
            content: "",
        };
        result.content = await connectPython.getContent(req);
        return result;
    },
};

export default imageService;

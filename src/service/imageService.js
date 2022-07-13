const imageService = {
    uploadImage: async (req, res, next) => {
        const result = {
            message: "ok",
        };
        res.status(201).send(result);
    },
};

export default imageService;

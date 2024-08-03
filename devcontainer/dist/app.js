"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const cors_1 = __importDefault(require("cors"));
const helmet_1 = __importDefault(require("helmet"));
const morgan_1 = __importDefault(require("morgan"));
const app = (0, express_1.default)();
const PORT = 3000;
app.use(express_1.default.json());
app.use((0, cors_1.default)());
app.use((0, helmet_1.default)());
app.use((0, morgan_1.default)("combined"));
app.get("/health", (_req, res) => {
    res.sendStatus(200);
});
app.get("/", (_req, res) => {
    res.send({ ok: true, message: "Hello World!", updatedAt: new Date() });
});
app.get("*", (_req, res) => {
    res.sendStatus(404);
});
app.listen(PORT, () => {
    console.log(`Server is running at http://localhost:${PORT}`);
});
//# sourceMappingURL=app.js.map
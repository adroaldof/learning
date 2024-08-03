import express from "express";
import { Request, Response } from "express";
import cors from "cors";
import helmet from "helmet";
import morgan from "morgan";

const app = express();
const PORT = 3000;

app.use(express.json());
app.use(cors());
app.use(helmet());
app.use(morgan("combined"));

app.get("/health", (_req: Request, res: Response) => {
  res.sendStatus(200);
});

app.get("/", (_req: Request, res: Response) => {
  res.send({ ok: true, message: "Hello World!", updatedAt: new Date() });
});

app.get("*", (_req: Request, res: Response) => {
  res.sendStatus(404);
});

app.listen(PORT, () => {
  console.log(`Server is running at http://localhost:${PORT}`);
});

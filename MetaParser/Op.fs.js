import { NoBaseName } from "./Exceptions.fs.js";

export function basename(t_mut) {
    basename:
    while (true) {
        const t = t_mut;
        switch (t.tag) {
            case 3:
            case 0:
            case 4: {
                const exn = new NoBaseName(t);
                throw exn;
            }
            case 2: {
                t_mut = t.fields[0];
                continue basename;
            }
            default: {
                return t.fields[0];
            }
        }
        break;
    }
}


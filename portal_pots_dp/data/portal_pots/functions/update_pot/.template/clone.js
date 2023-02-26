const fs = require("fs-extra");

const shard_names = ["archer", "prize", "arms_up", "skull"];

for (let i = 0; i < shard_names.length; i++) {
  let shard_a = shard_names[i];
  let dir_path = `../${shard_a}`;

  fs.copySync("./shard_a", dir_path);
  let files = fs.readdirSync(dir_path);

  for (let file of files) {
    if (file.endsWith(".mcfunction")) {
      let file_path = `${dir_path}/${file}`;
      let data = fs.readFileSync(file_path, "utf-8");
      data = data.replaceAll("shard_a/", `${shard_a}/`);
      data = data.replaceAll("shard_a.", `${shard_a}.`);
      fs.writeFileSync(file_path, data);
    }
  }

  fs.rmdirSync(`${dir_path}/shard_b`, { recursive: true, force: true });

  for (let j = 0; j < shard_names.length; j++) {
    let shard_b = shard_names[j];
    let dir_path = `../${shard_a}/${shard_b}`;

    fs.copySync("./shard_a/shard_b", dir_path);
    let files = fs.readdirSync(dir_path);

    for (let file of files) {
      if (file.endsWith(".mcfunction")) {
        let file_path = `${dir_path}/${file}`;
        let data = fs.readFileSync(file_path, "utf-8");
        data = data.replaceAll("shard_a/", `${shard_a}/`);
        data = data.replaceAll("shard_a.", `${shard_a}.`);
        data = data.replaceAll("shard_b", shard_b);
        fs.writeFileSync(file_path, data);
      }
    }

    fs.rmdirSync(`${dir_path}/shard_c`, { recursive: true, force: true });

    for (let k = 0; k < shard_names.length; k++) {
      let shard_c = shard_names[k];
      let dir_path = `../${shard_a}/${shard_b}/${shard_c}`;

      fs.copySync("./shard_a/shard_b/shard_c", dir_path);
      let files = fs.readdirSync(dir_path);

      for (let file of files) {
        if (file.endsWith(".mcfunction")) {
          let file_path = `${dir_path}/${file}`;
          let data = fs.readFileSync(file_path, "utf-8");
          data = data.replaceAll("shard_a/", `${shard_a}/`);
          data = data.replaceAll("shard_a.", `${shard_a}.`);
          data = data.replaceAll("shard_b", shard_b);
          data = data.replaceAll("shard_c", shard_c);
          fs.writeFileSync(file_path, data);
        }
      }

      fs.rmdirSync(`${dir_path}/shard_d`, { recursive: true, force: true });

      for (let l = 0; l < shard_names.length; l++) {
        let shard_d = shard_names[l];
        let dir_path = `../${shard_a}/${shard_b}/${shard_c}/${shard_d}`;

        fs.copySync("./shard_a/shard_b/shard_c/shard_d", dir_path);
        let files = fs.readdirSync(dir_path);

        for (let file of files) {
          if (file.endsWith(".mcfunction")) {
            let file_path = `${dir_path}/${file}`;
            let data = fs.readFileSync(file_path, "utf-8");
            data = data.replaceAll("shard_a/", `${shard_a}/`);
            data = data.replaceAll("shard_a.", `${shard_a}.`);
            data = data.replaceAll("shard_b", shard_b);
            data = data.replaceAll("shard_c", shard_c);
            data = data.replaceAll("shard_d", shard_d);
            fs.writeFileSync(file_path, data);
          }
        }
      }
    }
  }
}

import { spawn } from 'child_process';

const command = spawn('mongoimport', ['--uri', 'mongodb+srv://user:user@cluster0.3xzezxs.mongodb.net/Test', '--collection', 'user', '--upsertFields', 'id', '--jsonArray', 'users.json']);
export const executeProcess = async () => command.stdout.on('data', (data) => {
    console.log(`Output: ${data}`);
}), closeProcess = async () => command.on('close', (code) => {
    console.log(`Process exited with code ${code}`)
});


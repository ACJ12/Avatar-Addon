export function stats(message) {
    message.cancel = true;
    message.sender.runCommand(`playsound random.levelup "${message.sender.nameTag}"`);
    message.sender.runCommand(`execute "${message.sender.nameTag}" ~~~ function stats`);
}
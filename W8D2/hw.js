function madLib(verb, adj, noun) {
    return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`
}

function isSubstring(phrase, subphrase) {
    return phrase.includes(subphrase);
}

function fizzBuzz(array) {
    const fizzBuzzArr = [];

    array.forEach(el => {
        if ((el % 3 === 0) ^ (el % 5 === 0)) {
            fizzBuzzArr.push(el);
        }
    });

    return fizzBuzzArr;
}
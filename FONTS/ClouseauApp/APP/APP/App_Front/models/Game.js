

let Game = (function () {
    let privateProps = new WeakMap();

    class Game {
        constructor(data) {
            let random = (function (min, max) {
                return function (min, max) {
                    min = Math.ceil(min);
                    max = Math.floor(max)+.99;
                    return Math.floor(Math.random() * (max - min)) + min;
                }
            })();

            privateProps.set(this, {
                solution: new Teory(random(1, data.suspect.length)
                                   , random(1, data.place.length)
                                   , random(1, data.weapon.length)
                    ),
                random: random
            });
        }

        submit(teory) {
            let ret = privateProps.get(this).solution.valid(teory.suspect, teory.place, teory.weapon);
            if (ret.length > 0) {
                let test = ret[privateProps.get(this).random(1, ret.length)];
                if (!!test) {
                    return test;
                } else {
                    return 1;
                }
            }
            else {
                return 0;
            }
        }


    }

    return Game;
})();



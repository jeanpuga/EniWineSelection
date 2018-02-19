class Teory
{
    constructor(suspect, place, weapon) {
        this._suspect = suspect||0;
        this._place = place || 0;
        this._weapon = weapon || 0;
    }
    get suspect(){
        return this._suspect;
    }
    set suspect(suspect) {
        this._suspect = suspect;
    }
    get place(){
        return this._place;
    }
    set place(place) {
        this._place = place;
    }
    get weapon(){
        return this._weapon;
    }
    set weapon(weapon) {
        this._weapon = weapon;
    }
    valid(s,p,w){
        let ret = [];
        if (this._suspect != s) ret.push(1);
        if (this._place != p) ret.push(2);
        if (this._weapon != w) ret.push(3);
        return ret;
    }
    

}
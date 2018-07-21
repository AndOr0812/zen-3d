import {Quaternion} from '../../math/Quaternion.js';
import {KeyframeTrack} from './KeyframeTrack.js';

/**
 * QuaternionKeyframeTrack
 * used for quaternion property track
 */
function QuaternionKeyframeTrack(target, propertyPath, times, values, interpolant) {
    KeyframeTrack.call(this, target, propertyPath, times, values, interpolant);
}

QuaternionKeyframeTrack.prototype = Object.assign(Object.create(KeyframeTrack.prototype), {

    constructor: QuaternionKeyframeTrack,

    valueTypeName: 'quaternion',

    getValue: function(t, outBuffer) {

        var index = this._getLastTimeIndex(t),
            times = this.times,
            values = this.values,
            key1 = times[index],
            key2 = times[index + 1];

        if (this.interpolant) {
            if (key2 !== undefined) {
                var ratio = (t - key1) / (key2 - key1);
                Quaternion.slerpFlat( outBuffer, 0, values, index * 4, values, (index + 1) * 4,  ratio );
            } else {
                // just copy
                for(var i = 0; i < 4; i++) {
                    outBuffer[i] = values[index * 4 + i];
                }
            }
        } else {
            // just copy
            for(var i = 0; i < 4; i++) {
                outBuffer[i] = values[index * 4 + i];
            }
        }

    }

});

export {QuaternionKeyframeTrack};
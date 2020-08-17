using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public class RotateOnCollision : Rotator
{
    bool rotate=false;

    protected override void Start()
    {
        base.Start();
        Player player = FindObjectsOfType<Player>().First(j => j.name == "Walk_Joystick");
        player.OnPlayerInput += (Vector2 d)=> { rotate = d.sqrMagnitude <1;
            Debug.Log(d.sqrMagnitude);
        };
    }

    protected override void Update()
    {
        base.Update();
    }

    private void OnCollisionStay(Collision other) {
        if (rotate)
        {
            other.transform.RotateAround(transform.position,currentAxis,angle);
        }
    }
    
}

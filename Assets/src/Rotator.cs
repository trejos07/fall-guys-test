using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Rotator : MonoBehaviour
{

    [SerializeField] protected float speed;
    [SerializeField] protected Axis axis;
    protected float angle;

    protected Vector3 currentAxis;

    protected virtual void Start() {
        switch (axis)
        {
            case Axis.X :
                currentAxis = transform.right;
                break;
            case Axis.Y :
                currentAxis = transform.up;
                break;
            case Axis.Z :
                currentAxis = transform.forward;
                break;
            default:
                break;
        }
    }

    protected virtual void Update()
    {
        angle = speed * Time.deltaTime*360;
        transform.Rotate(currentAxis, angle);
    }
}

public enum Axis {X,Y,Z}

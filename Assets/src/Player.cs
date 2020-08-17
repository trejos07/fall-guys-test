using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;
using System.Linq;
using System;

public class Player : Character
{
    [SerializeField]private float movSpeed = 10F;
    [SerializeField]private float shotingSpeed = 6;

    private float hVal = 0F;
    private float vVal = 0F;
    private float pitchVal = 0F;
    private Coroutine shooting;
    private bool haveKey=false;
    private bool aiming=false;

    public event Action<Vector2> OnPlayerInput;

    protected override void Start()
    {
        base.Start();
        // try{
        //     VariableJoystick[] joysticks = FindObjectsOfType<VariableJoystick>();
        //     joysticks.First(j => j.name == "Aim_Joystick").OnJoysticInput += AimTo;
        //     joysticks.First(j => j.name == "Walk_Joystick").OnJoysticInput += MoveTo;
        // }
        // catch (Exception e) { Debug.LogError(e); }
        mAnimator.SetFloat("moving", 0);
    }
    private void Update()
    {
        float x =Input.GetAxis("Horizontal");
        float y = Input.GetAxis("Vertical");

        MoveTo(new Vector2(x,y));
        AimTo(Input.GetAxis("Mouse X"));
    }

    public void AimTo(float _aimDir){
        float rotX = _aimDir*180*Mathf.Deg2Rad;
        transform.Rotate(Vector3.up,rotX);

    }
    public void MoveTo(Vector2 _movDir){
        Vector3 input = new Vector3(_movDir.x, 0, _movDir.y);
        _movDir = _movDir.magnitude > 1 ? _movDir.normalized : _movDir;
        mAnimator.SetFloat("moving", _movDir.magnitude);
        OnPlayerInput?.Invoke(_movDir);

        if (_movDir.magnitude != 0){
            input*= movSpeed * Time.deltaTime;
            Vector3 newPos = transform.position + input.x*transform.right +input.z*transform.forward;
            mRigidbody.MovePosition(newPos);
            // if (!aiming)
            // {
            //    float rotY = Mathf.Atan2(_movDir.x, _movDir.y) * Mathf.Rad2Deg -90;
            //    Quaternion targetRot = Quaternion.Euler(transform.rotation.x, rotY, transform.rotation.z);
            //    mRigidbody.MoveRotation(Quaternion.Slerp(mRigidbody.rotation, targetRot, RotSpeed * Time.deltaTime));
            // }
        }
    }

    protected override void OnDeath()
    {
        // try{
        //     VariableJoystick[] joysticks = FindObjectsOfType<VariableJoystick>();
        //     joysticks.First(j => j.name == "Aim_Joystick").OnJoysticInput -= AimTo;
        //     joysticks.First(j => j.name == "Walk_Joystick").OnJoysticInput -= MoveTo;
        // }
        // catch (Exception e) { Debug.LogError(e); }
        // base.OnDeath();
        SceneManager.LoadScene(0);
    }

}
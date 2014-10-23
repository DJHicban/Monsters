/*
 * MonsterEntity
 * Created by Eqela Studio 2.0b7.4
 */
public class MonsterEntity : SEEntity
{
    int w;
    int h;
    SESprite Monster;
    int mx;
    int my;
    int pX;
    int py;
    
    public void initialize(SEResourceCache rsc)
    {
        base.initialize(rsc);
        w=get_scene_width();
        h=get_scene_height();
    
        
         rsc.prepare_image("myMonster", "Monster", 0.1*w);
        Monster=add_sprite_for_image(SEImage.for_resource("myMonster"));
    
        Monster.move(Math.random(0,w), Math.random(0,h));
    }
    public void tick(TimeVal now, double delta)
    {
        mx=Monster.get_x();
        my= Monster.get_y();
        pX= MainScene.x;
        py= MainScene.y;
        base.tick(now,delta);
        Monster.move(mx+(pX-mx)/Math.random(10,100),my+ (py-my)/Math.random(100,1000));
    }
    public void cleanup()
     {
        base.cleanup();
    }
}
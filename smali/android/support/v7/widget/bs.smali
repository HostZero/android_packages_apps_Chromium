.class final Landroid/support/v7/widget/bs;
.super Ljava/lang/Object;
.source "SwitchCompat.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Landroid/support/v7/widget/SwitchCompat;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SwitchCompat;Z)V
    .locals 0

    .prologue
    .line 759
    iput-object p1, p0, Landroid/support/v7/widget/bs;->b:Landroid/support/v7/widget/SwitchCompat;

    iput-boolean p2, p0, Landroid/support/v7/widget/bs;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 765
    iget-object v0, p0, Landroid/support/v7/widget/bs;->b:Landroid/support/v7/widget/SwitchCompat;

    invoke-static {v0}, Landroid/support/v7/widget/SwitchCompat;->a(Landroid/support/v7/widget/SwitchCompat;)Landroid/support/v7/widget/bt;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 767
    iget-object v1, p0, Landroid/support/v7/widget/bs;->b:Landroid/support/v7/widget/SwitchCompat;

    iget-boolean v0, p0, Landroid/support/v7/widget/bs;->a:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-static {v1, v0}, Landroid/support/v7/widget/SwitchCompat;->a(Landroid/support/v7/widget/SwitchCompat;F)V

    .line 768
    iget-object v0, p0, Landroid/support/v7/widget/bs;->b:Landroid/support/v7/widget/SwitchCompat;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->a(Landroid/support/v7/widget/SwitchCompat;Landroid/support/v7/widget/bt;)Landroid/support/v7/widget/bt;

    .line 770
    :cond_0
    return-void

    .line 767
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 773
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 761
    return-void
.end method

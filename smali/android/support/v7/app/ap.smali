.class final Landroid/support/v7/app/ap;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Landroid/support/v7/app/aj;


# direct methods
.method constructor <init>(Landroid/support/v7/app/aj;)V
    .locals 0

    .prologue
    .line 618
    iput-object p1, p0, Landroid/support/v7/app/ap;->a:Landroid/support/v7/app/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Landroid/support/v7/app/ap;->a:Landroid/support/v7/app/aj;

    invoke-static {v0}, Landroid/support/v7/app/aj;->b(Landroid/support/v7/app/aj;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 627
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 630
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 621
    iget-object v0, p0, Landroid/support/v7/app/ap;->a:Landroid/support/v7/app/aj;

    invoke-static {v0}, Landroid/support/v7/app/aj;->b(Landroid/support/v7/app/aj;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 622
    return-void
.end method

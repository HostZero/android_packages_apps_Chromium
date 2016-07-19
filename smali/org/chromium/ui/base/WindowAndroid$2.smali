.class Lorg/chromium/ui/base/WindowAndroid$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WindowAndroid.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method constructor <init>(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    .prologue
    .line 604
    iput-object p1, p0, Lorg/chromium/ui/base/WindowAndroid$2;->this$0:Lorg/chromium/ui/base/WindowAndroid;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 607
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 608
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid$2;->this$0:Lorg/chromium/ui/base/WindowAndroid;

    # getter for: Lorg/chromium/ui/base/WindowAndroid;->mAnimationsOverContent:Ljava/util/HashSet;
    invoke-static {v0}, Lorg/chromium/ui/base/WindowAndroid;->access$600(Lorg/chromium/ui/base/WindowAndroid;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 609
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid$2;->this$0:Lorg/chromium/ui/base/WindowAndroid;

    # invokes: Lorg/chromium/ui/base/WindowAndroid;->refreshWillNotDraw()V
    invoke-static {v0}, Lorg/chromium/ui/base/WindowAndroid;->access$200(Lorg/chromium/ui/base/WindowAndroid;)V

    .line 610
    return-void
.end method

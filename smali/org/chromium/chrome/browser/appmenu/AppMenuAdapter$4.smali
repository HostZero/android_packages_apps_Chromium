.class Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppMenuAdapter.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$4;->this$0:Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;

    iput-object p2, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$4;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 345
    return-void
.end method

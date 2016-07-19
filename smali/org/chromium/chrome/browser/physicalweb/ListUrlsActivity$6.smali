.class Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ListUrlsActivity.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$6;->this$0:Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$6;->this$0:Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;

    # getter for: Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mBottomBar:Landroid/view/View;
    invoke-static {v0}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->access$500(Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 336
    return-void
.end method

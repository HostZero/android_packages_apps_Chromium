.class Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ToolbarPhone.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;)V
    .locals 0

    .prologue
    .line 1341
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$5;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 1347
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$5;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->access$300(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$5;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->requestLayout()V

    .line 1348
    :cond_0
    return-void
.end method

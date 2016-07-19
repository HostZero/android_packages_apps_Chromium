.class Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CustomTabToolbarAnimationDelegate.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;

.field final synthetic val$titleUrlContainer:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$1;->this$0:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;

    iput-object p2, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$1;->val$titleUrlContainer:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$1;->this$0:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;

    # getter for: Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mSecurityButton:Landroid/view/View;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->access$000(Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$1;->this$0:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;

    # getter for: Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mSecurityButton:Landroid/view/View;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->access$000(Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 64
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$1;->val$titleUrlContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 65
    return-void
.end method

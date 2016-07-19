.class Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CustomTabToolbarAnimationDelegate.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;

.field final synthetic val$titleUrlContainer:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$2;->this$0:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;

    iput-object p2, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$2;->val$titleUrlContainer:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$2;->this$0:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;

    # getter for: Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mSecurityButton:Landroid/view/View;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->access$000(Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$2;->val$titleUrlContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 85
    return-void
.end method

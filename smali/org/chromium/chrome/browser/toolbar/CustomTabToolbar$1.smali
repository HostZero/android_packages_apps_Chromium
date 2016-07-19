.class Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar$1;
.super Ljava/lang/Object;
.source "CustomTabToolbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar$1;->this$0:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar$1;->this$0:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;

    # getter for: Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mAnimDelegate:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->access$000(Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;)Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar$1;->this$0:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->startTitleAnimation(Landroid/content/Context;)V

    .line 83
    return-void
.end method

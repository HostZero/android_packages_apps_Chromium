.class Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Stack.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->access$000(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;)Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->requestUpdate()V

    .line 249
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->access$000(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;)Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->requestUpdate()V

    .line 254
    return-void
.end method

.class Lorg/chromium/chrome/browser/omnibox/LocationBarPhone$4;
.super Ljava/lang/Object;
.source "LocationBarPhone.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

.field final synthetic val$windowDelegate:Lorg/chromium/chrome/browser/WindowDelegate;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;Lorg/chromium/chrome/browser/WindowDelegate;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone$4;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    iput-object p2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone$4;->val$windowDelegate:Lorg/chromium/chrome/browser/WindowDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone$4;->val$windowDelegate:Lorg/chromium/chrome/browser/WindowDelegate;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/WindowDelegate;->setWindowSoftInputMode(I)V

    .line 273
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone$4;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mKeyboardResizeModeTask:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->access$002(Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 274
    return-void
.end method

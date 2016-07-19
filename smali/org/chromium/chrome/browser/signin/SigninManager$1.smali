.class Lorg/chromium/chrome/browser/signin/SigninManager$1;
.super Ljava/lang/Object;
.source "SigninManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/signin/SigninManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/signin/SigninManager;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/SigninManager$1;->this$0:Lorg/chromium/chrome/browser/signin/SigninManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager$1;->this$0:Lorg/chromium/chrome/browser/signin/SigninManager;

    # getter for: Lorg/chromium/chrome/browser/signin/SigninManager;->mSignInAllowedObservers:Lorg/chromium/base/ObserverList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->access$000(Lorg/chromium/chrome/browser/signin/SigninManager;)Lorg/chromium/base/ObserverList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/signin/SigninManager$SignInAllowedObserver;

    .line 281
    invoke-interface {v0}, Lorg/chromium/chrome/browser/signin/SigninManager$SignInAllowedObserver;->onSignInAllowedChanged()V

    goto :goto_0

    .line 283
    :cond_0
    return-void
.end method

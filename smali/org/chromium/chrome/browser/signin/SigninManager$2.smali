.class Lorg/chromium/chrome/browser/signin/SigninManager$2;
.super Ljava/lang/Object;
.source "SigninManager.java"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/signin/SigninManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/signin/SigninManager;Landroid/app/Activity;Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/SigninManager$2;->this$0:Lorg/chromium/chrome/browser/signin/SigninManager;

    iput-object p2, p0, Lorg/chromium/chrome/browser/signin/SigninManager$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lorg/chromium/chrome/browser/signin/SigninManager$2;->val$callback:Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/accounts/Account;)V
    .locals 3

    .prologue
    .line 361
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager$2;->this$0:Lorg/chromium/chrome/browser/signin/SigninManager;

    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/SigninManager$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lorg/chromium/chrome/browser/signin/SigninManager$2;->val$callback:Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;

    invoke-virtual {v0, p1, v1, v2}, Lorg/chromium/chrome/browser/signin/SigninManager;->signIn(Landroid/accounts/Account;Landroid/app/Activity;Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;)V

    .line 362
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 358
    check-cast p1, Landroid/accounts/Account;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/signin/SigninManager$2;->onResult(Landroid/accounts/Account;)V

    return-void
.end method

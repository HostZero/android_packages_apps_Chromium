.class Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$2$1;
.super Ljava/lang/Object;
.source "AccountsChangedReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$2;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$2;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$2$1;->this$0:Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$2$1;->this$0:Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$2;

    iget-object v0, v0, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninHelper;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/signin/SigninHelper;->validateAccountSettings(Z)V

    .line 111
    return-void
.end method

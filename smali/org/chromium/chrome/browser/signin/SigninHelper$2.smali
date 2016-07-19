.class Lorg/chromium/chrome/browser/signin/SigninHelper$2;
.super Ljava/lang/Object;
.source "SigninHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/signin/SigninHelper;

.field final synthetic val$newName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/signin/SigninHelper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/SigninHelper$2;->this$0:Lorg/chromium/chrome/browser/signin/SigninHelper;

    iput-object p2, p0, Lorg/chromium/chrome/browser/signin/SigninHelper$2;->val$newName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninHelper$2;->this$0:Lorg/chromium/chrome/browser/signin/SigninHelper;

    iget-object v0, v0, Lorg/chromium/chrome/browser/signin/SigninHelper;->mContext:Landroid/content/Context;

    # invokes: Lorg/chromium/chrome/browser/signin/SigninHelper;->clearNewSignedInAccountName(Landroid/content/Context;)V
    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninHelper;->access$100(Landroid/content/Context;)V

    .line 248
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninHelper$2;->this$0:Lorg/chromium/chrome/browser/signin/SigninHelper;

    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/SigninHelper$2;->val$newName:Ljava/lang/String;

    # invokes: Lorg/chromium/chrome/browser/signin/SigninHelper;->performResignin(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/signin/SigninHelper;->access$200(Lorg/chromium/chrome/browser/signin/SigninHelper;Ljava/lang/String;)V

    .line 249
    return-void
.end method

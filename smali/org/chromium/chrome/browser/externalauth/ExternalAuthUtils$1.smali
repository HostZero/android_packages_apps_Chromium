.class Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils$1;
.super Ljava/lang/Object;
.source "ExternalAuthUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$errorHandler:Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils$1;->this$0:Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;

    iput-object p2, p0, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils$1;->val$errorHandler:Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler;

    iput-object p3, p0, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils$1;->val$context:Landroid/content/Context;

    iput p4, p0, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils$1;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils$1;->val$errorHandler:Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils$1;->val$context:Landroid/content/Context;

    iget v2, p0, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils$1;->val$resultCode:I

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler;->handleError(Landroid/content/Context;I)V

    .line 193
    return-void
.end method

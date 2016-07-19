.class Lorg/chromium/chrome/browser/webapps/WebappActivity$2$1;
.super Ljava/lang/Object;
.source "WebappActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/webapps/WebappActivity$2;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/webapps/WebappActivity$2;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$2$1;->this$1:Lorg/chromium/chrome/browser/webapps/WebappActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$2$1;->this$1:Lorg/chromium/chrome/browser/webapps/WebappActivity$2;

    iget-object v0, v0, Lorg/chromium/chrome/browser/webapps/WebappActivity$2;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->goBack()V

    .line 401
    return-void
.end method

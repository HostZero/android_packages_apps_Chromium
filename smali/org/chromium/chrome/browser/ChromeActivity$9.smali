.class Lorg/chromium/chrome/browser/ChromeActivity$9;
.super Ljava/lang/Object;
.source "ChromeActivity.java"

# interfaces
.implements Lorg/chromium/chrome/browser/IntentHandler$IntentHandlerDelegate;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ChromeActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 0

    .prologue
    .line 990
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeActivity$9;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processUrlViewIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;Ljava/lang/String;IZLandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1002
    return-void
.end method

.method public processWebSearchIntent(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 993
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 994
    const-string/jumbo v1, "query"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 995
    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity$9;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/ChromeActivity;->startActivity(Landroid/content/Intent;)V

    .line 996
    return-void
.end method

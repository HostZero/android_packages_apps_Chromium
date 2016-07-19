.class Lorg/chromium/chrome/browser/webapps/WebappActivity$1;
.super Ljava/lang/Object;
.source "WebappActivity.java"

# interfaces
.implements Lorg/chromium/chrome/browser/webapps/WebappDataStorage$FetchCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

.field final synthetic val$backgroundColor:I


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/webapps/WebappActivity;I)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$1;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    iput p2, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$1;->val$backgroundColor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataRetrieved(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$1;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    iget v1, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$1;->val$backgroundColor:I

    # invokes: Lorg/chromium/chrome/browser/webapps/WebappActivity;->initializeSplashScreenWidgets(ILandroid/graphics/Bitmap;)V
    invoke-static {v0, v1, p1}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->access$000(Lorg/chromium/chrome/browser/webapps/WebappActivity;ILandroid/graphics/Bitmap;)V

    .line 260
    return-void
.end method

.method public bridge synthetic onDataRetrieved(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 256
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/webapps/WebappActivity$1;->onDataRetrieved(Landroid/graphics/Bitmap;)V

    return-void
.end method

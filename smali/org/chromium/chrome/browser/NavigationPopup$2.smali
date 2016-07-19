.class Lorg/chromium/chrome/browser/NavigationPopup$2;
.super Ljava/lang/Object;
.source "NavigationPopup.java"

# interfaces
.implements Lorg/chromium/chrome/browser/favicon/FaviconHelper$FaviconImageCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/NavigationPopup;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/NavigationPopup;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lorg/chromium/chrome/browser/NavigationPopup$2;->this$0:Lorg/chromium/chrome/browser/NavigationPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaviconAvailable(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lorg/chromium/chrome/browser/NavigationPopup$2;->this$0:Lorg/chromium/chrome/browser/NavigationPopup;

    const-string/jumbo v1, "chrome://history/"

    # invokes: Lorg/chromium/chrome/browser/NavigationPopup;->onFaviconAvailable(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lorg/chromium/chrome/browser/NavigationPopup;->access$100(Lorg/chromium/chrome/browser/NavigationPopup;Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    return-void
.end method

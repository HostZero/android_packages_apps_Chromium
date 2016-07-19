.class Lorg/chromium/chrome/browser/NavigationPopup$1;
.super Ljava/lang/Object;
.source "NavigationPopup.java"

# interfaces
.implements Lorg/chromium/chrome/browser/favicon/FaviconHelper$FaviconImageCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/NavigationPopup;

.field final synthetic val$pageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/NavigationPopup;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lorg/chromium/chrome/browser/NavigationPopup$1;->this$0:Lorg/chromium/chrome/browser/NavigationPopup;

    iput-object p2, p0, Lorg/chromium/chrome/browser/NavigationPopup$1;->val$pageUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaviconAvailable(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lorg/chromium/chrome/browser/NavigationPopup$1;->this$0:Lorg/chromium/chrome/browser/NavigationPopup;

    iget-object v1, p0, Lorg/chromium/chrome/browser/NavigationPopup$1;->val$pageUrl:Ljava/lang/String;

    # invokes: Lorg/chromium/chrome/browser/NavigationPopup;->onFaviconAvailable(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lorg/chromium/chrome/browser/NavigationPopup;->access$100(Lorg/chromium/chrome/browser/NavigationPopup;Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    return-void
.end method

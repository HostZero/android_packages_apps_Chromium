.class Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$5;
.super Ljava/lang/Object;
.source "ListUrlsActivity.java"

# interfaces
.implements Lorg/chromium/chrome/browser/physicalweb/PwsClient$FetchIconCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$5;->this$0:Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIconReceived(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$5;->this$0:Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;

    # getter for: Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->mAdapter:Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;
    invoke-static {v0}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->access$200(Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;)Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;->setIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 318
    return-void
.end method

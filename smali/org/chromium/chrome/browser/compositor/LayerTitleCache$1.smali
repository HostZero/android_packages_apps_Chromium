.class Lorg/chromium/chrome/browser/compositor/LayerTitleCache$1;
.super Ljava/lang/Object;
.source "LayerTitleCache.java"

# interfaces
.implements Lorg/chromium/chrome/browser/favicon/FaviconHelper$FaviconImageCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/LayerTitleCache;

.field final synthetic val$tab:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$1;->this$0:Lorg/chromium/chrome/browser/compositor/LayerTitleCache;

    iput-object p2, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$1;->val$tab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaviconAvailable(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$1;->this$0:Lorg/chromium/chrome/browser/compositor/LayerTitleCache;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$1;->val$tab:Lorg/chromium/chrome/browser/tab/Tab;

    # invokes: Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->updateFaviconFromHistory(Lorg/chromium/chrome/browser/tab/Tab;Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1, p1}, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->access$000(Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/tab/Tab;Landroid/graphics/Bitmap;)V

    .line 145
    return-void
.end method

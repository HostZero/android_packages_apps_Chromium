.class Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;
.super Ljava/lang/Object;
.source "LayerTitleCache.java"


# instance fields
.field private mExpectUpdateFromHistory:Z

.field private final mFavicon:Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;

.field private final mTitle:Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;

.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/LayerTitleCache;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/LayerTitleCache;)V
    .locals 2

    .prologue
    .line 215
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;->this$0:Lorg/chromium/chrome/browser/compositor/LayerTitleCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v0, Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;

    # operator++ for: Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->sNextResourceId:I
    invoke-static {}, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->access$108()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;->mFavicon:Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;

    .line 209
    new-instance v0, Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;

    # operator++ for: Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->sNextResourceId:I
    invoke-static {}, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->access$108()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;->mTitle:Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;

    .line 215
    return-void
.end method


# virtual methods
.method public getFaviconResId()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;->mFavicon:Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;

    invoke-virtual {v0}, Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;->getResId()I

    move-result v0

    return v0
.end method

.method public getTitleResId()I
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;->mTitle:Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;

    invoke-virtual {v0}, Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;->getResId()I

    move-result v0

    return v0
.end method

.method public register()V
    .locals 3

    .prologue
    .line 231
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;->this$0:Lorg/chromium/chrome/browser/compositor/LayerTitleCache;

    # getter for: Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mResourceManager:Lorg/chromium/ui/resources/ResourceManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->access$200(Lorg/chromium/chrome/browser/compositor/LayerTitleCache;)Lorg/chromium/ui/resources/ResourceManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;->this$0:Lorg/chromium/chrome/browser/compositor/LayerTitleCache;

    # getter for: Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mResourceManager:Lorg/chromium/ui/resources/ResourceManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->access$200(Lorg/chromium/chrome/browser/compositor/LayerTitleCache;)Lorg/chromium/ui/resources/ResourceManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/resources/ResourceManager;->getBitmapDynamicResourceLoader()Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;->mFavicon:Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;

    invoke-virtual {v1}, Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;->getResId()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;->mFavicon:Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;->registerResource(ILorg/chromium/ui/resources/dynamics/DynamicResource;)V

    .line 234
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;->mTitle:Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;

    invoke-virtual {v1}, Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;->getResId()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;->mTitle:Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;->registerResource(ILorg/chromium/ui/resources/dynamics/DynamicResource;)V

    goto :goto_0
.end method

.method public set(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;->mTitle:Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;

    invoke-virtual {v0, p1}, Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 219
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;->mFavicon:Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;

    invoke-virtual {v0, p2}, Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 220
    iput-boolean p3, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;->mExpectUpdateFromHistory:Z

    .line 221
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;->this$0:Lorg/chromium/chrome/browser/compositor/LayerTitleCache;

    # getter for: Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mResourceManager:Lorg/chromium/ui/resources/ResourceManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->access$200(Lorg/chromium/chrome/browser/compositor/LayerTitleCache;)Lorg/chromium/ui/resources/ResourceManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;->this$0:Lorg/chromium/chrome/browser/compositor/LayerTitleCache;

    # getter for: Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->mResourceManager:Lorg/chromium/ui/resources/ResourceManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->access$200(Lorg/chromium/chrome/browser/compositor/LayerTitleCache;)Lorg/chromium/ui/resources/ResourceManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/resources/ResourceManager;->getBitmapDynamicResourceLoader()Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;->mFavicon:Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;

    invoke-virtual {v1}, Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;->getResId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;->unregisterResource(I)V

    .line 241
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;->mTitle:Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;

    invoke-virtual {v1}, Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;->getResId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;->unregisterResource(I)V

    goto :goto_0
.end method

.method public updateFaviconFromHistory(Landroid/graphics/Bitmap;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 224
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;->mExpectUpdateFromHistory:Z

    if-nez v1, :cond_0

    .line 227
    :goto_0
    return v0

    .line 225
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;->mFavicon:Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;

    invoke-virtual {v1, p1}, Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 226
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache$Title;->mExpectUpdateFromHistory:Z

    .line 227
    const/4 v0, 0x1

    goto :goto_0
.end method

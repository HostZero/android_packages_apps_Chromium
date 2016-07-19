.class Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationImageCallback;
.super Ljava/lang/Object;
.source "DocumentMigrationHelper.java"

# interfaces
.implements Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager$DecompressThumbnailCallback;
.implements Lorg/chromium/chrome/browser/favicon/FaviconHelper$FaviconImageCallback;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mCompletedCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mFinalizeMode:I

.field private mIcon:Landroid/graphics/Bitmap;

.field private final mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

.field private final mTabId:I

.field private final mTabModel:Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabModel;

.field private final mTitle:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Landroid/app/Activity;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabModel;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationImageCallback;->mCompletedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 196
    iput-object p2, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationImageCallback;->mActivity:Landroid/app/Activity;

    .line 197
    iput-object p3, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationImageCallback;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    .line 198
    iput-object p4, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationImageCallback;->mTabModel:Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabModel;

    .line 199
    iput p5, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationImageCallback;->mTabId:I

    .line 200
    iput-object p6, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationImageCallback;->mUrl:Ljava/lang/String;

    .line 201
    iput-object p7, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationImageCallback;->mTitle:Ljava/lang/String;

    .line 202
    iput p8, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationImageCallback;->mFinalizeMode:I

    .line 203
    return-void
.end method


# virtual methods
.method public onFaviconAvailable(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 207
    new-instance v0, Lorg/chromium/chrome/browser/document/DocumentActivityIcon;

    iget-object v1, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationImageCallback;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/document/DocumentActivityIcon;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationImageCallback;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/chromium/chrome/browser/document/DocumentActivityIcon;->getBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationImageCallback;->mIcon:Landroid/graphics/Bitmap;

    .line 208
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationImageCallback;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    iget v1, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationImageCallback;->mTabId:I

    invoke-virtual {v0, v1, p0}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->getThumbnailForId(ILorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager$DecompressThumbnailCallback;)V

    .line 209
    return-void
.end method

.method public onFinishGetBitmap(Landroid/graphics/Bitmap;)V
    .locals 7

    .prologue
    .line 215
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationImageCallback;->mUrl:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ntp/NativePageFactory;->isNativePageUrl(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationImageCallback;->mUrl:Ljava/lang/String;

    const-string/jumbo v1, "chrome://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationImageCallback;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationImageCallback;->mTabId:I

    iget-object v2, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationImageCallback;->mTabModel:Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabModel;

    iget v3, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationImageCallback;->mTabId:I

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabModel;->getTabStateForDocument(I)Lorg/chromium/chrome/browser/TabState;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationImageCallback;->mUrl:Ljava/lang/String;

    iget-object v4, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationImageCallback;->mTitle:Ljava/lang/String;

    iget-object v5, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationImageCallback;->mIcon:Landroid/graphics/Bitmap;

    move-object v6, p1

    # invokes: Lorg/chromium/chrome/browser/document/DocumentMigrationHelper;->addAppTask(Landroid/app/Activity;ILorg/chromium/chrome/browser/TabState;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    invoke-static/range {v0 .. v6}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper;->access$100(Landroid/app/Activity;ILorg/chromium/chrome/browser/TabState;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 221
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationImageCallback;->mCompletedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationImageCallback;->mTabModel:Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabModel;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabModel;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 222
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationImageCallback;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->destroy()V

    .line 223
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationImageCallback;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationImageCallback;->mFinalizeMode:I

    # invokes: Lorg/chromium/chrome/browser/document/DocumentMigrationHelper;->finalizeMigration(Landroid/app/Activity;I)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper;->access$200(Landroid/app/Activity;I)V

    .line 225
    :cond_1
    return-void
.end method

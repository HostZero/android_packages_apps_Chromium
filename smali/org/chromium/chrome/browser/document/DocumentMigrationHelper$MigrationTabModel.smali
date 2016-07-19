.class Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabModel;
.super Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;
.source "DocumentMigrationHelper.java"


# instance fields
.field private final mTitleList:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationActivityDelegate;Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;)V
    .locals 7

    .prologue
    .line 150
    new-instance v3, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabCreatorManager;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabCreatorManager;-><init>(Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$1;)V

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;-><init>(Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;ZILandroid/content/Context;)V

    .line 152
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabModel;->startTabStateLoad()V

    .line 153
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabModel;->mTitleList:Landroid/util/SparseArray;

    .line 154
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationActivityDelegate;->getSelectedTabId()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabModel;->setLastShownId(I)Z

    .line 155
    return-void
.end method


# virtual methods
.method public getTitleForDocument(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabModel;->mTitleList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 164
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    return-object v0
.end method

.method protected shouldStartDeserialization(I)Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateEntryInfoFromTabState(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;Lorg/chromium/chrome/browser/TabState;)V
    .locals 3

    .prologue
    .line 174
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->updateEntryInfoFromTabState(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;Lorg/chromium/chrome/browser/TabState;)V

    .line 175
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabModel;->mTitleList:Landroid/util/SparseArray;

    iget v1, p1, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->tabId:I

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/TabState;->getDisplayTitleFromState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 176
    return-void
.end method

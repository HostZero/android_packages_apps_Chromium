.class Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModelImplCreator;
.super Ljava/lang/Object;
.source "OffTheRecordTabModelImplCreator.java"

# interfaces
.implements Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel$OffTheRecordTabModelDelegate;


# instance fields
.field private final mIncognitoTabCreator:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

.field private final mModelDelegate:Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;

.field private final mOrderController:Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;

.field private final mRegularTabCreator:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

.field private final mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

.field private final mTabSaver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

.field private final mUma:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModelImplCreator;->mRegularTabCreator:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    .line 43
    iput-object p2, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModelImplCreator;->mIncognitoTabCreator:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    .line 44
    iput-object p3, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModelImplCreator;->mUma:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;

    .line 45
    iput-object p4, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModelImplCreator;->mOrderController:Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;

    .line 46
    iput-object p5, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModelImplCreator;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    .line 47
    iput-object p6, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModelImplCreator;->mTabSaver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    .line 48
    iput-object p7, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModelImplCreator;->mModelDelegate:Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;

    .line 49
    return-void
.end method


# virtual methods
.method public createTabModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;
    .locals 10

    .prologue
    .line 53
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModelImplCreator;->mRegularTabCreator:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    iget-object v3, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModelImplCreator;->mIncognitoTabCreator:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    iget-object v4, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModelImplCreator;->mUma:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;

    iget-object v5, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModelImplCreator;->mOrderController:Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;

    iget-object v6, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModelImplCreator;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    iget-object v7, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModelImplCreator;->mTabSaver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    iget-object v8, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModelImplCreator;->mModelDelegate:Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;-><init>(ZLorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorUma;Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;Z)V

    return-object v0
.end method

.method public doOffTheRecordTabsExist()Z
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->getInstance()Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->getIncognitoTabCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabCreatorManager;
.super Ljava/lang/Object;
.source "DocumentMigrationHelper.java"

# interfaces
.implements Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;


# instance fields
.field mIncognitoTabCreator:Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;

.field mRegularTabCreator:Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;-><init>(Z)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabCreatorManager;->mRegularTabCreator:Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;

    .line 132
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;-><init>(Z)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabCreatorManager;->mIncognitoTabCreator:Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$1;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabCreatorManager;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabCreatorManager;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;

    move-result-object v0

    return-object v0
.end method

.method public getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;
    .locals 1

    .prologue
    .line 136
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabCreatorManager;->mIncognitoTabCreator:Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabCreatorManager;->mRegularTabCreator:Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;

    goto :goto_0
.end method

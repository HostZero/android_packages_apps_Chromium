.class final Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$1;
.super Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$InitializationObserver;
.source "DocumentMigrationHelper.java"


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$finalizeMode:I

.field final synthetic val$normalTabModel:Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabModel;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;Landroid/app/Activity;Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabModel;I)V
    .locals 0

    .prologue
    .line 313
    iput-object p2, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$1;->val$normalTabModel:Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabModel;

    iput p4, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$1;->val$finalizeMode:I

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$InitializationObserver;-><init>(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;)V

    return-void
.end method


# virtual methods
.method public final isCanceled()Z
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public final isSatisfied(I)Z
    .locals 1

    .prologue
    .line 321
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final runImmediately()V
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$1;->val$normalTabModel:Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabModel;

    iget v2, p0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$1;->val$finalizeMode:I

    # invokes: Lorg/chromium/chrome/browser/document/DocumentMigrationHelper;->addAppTasksFromFiles(Landroid/app/Activity;Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabModel;I)V
    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper;->access$300(Landroid/app/Activity;Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabModel;I)V

    .line 317
    return-void
.end method

.class public Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;
.super Ljava/lang/Object;
.source "ChildProcessLauncher.java"


# instance fields
.field private final mExtraBindFlags:I

.field private final mLibraryProcessType:I

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public static getLibraryProcessType(Landroid/content/Intent;)I
    .locals 2

    .prologue
    .line 100
    const-string/jumbo v0, "org.chromium.content.common.child_service_params.library_process_type"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public addExtraBindFlags(I)I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;->mExtraBindFlags:I

    or-int/2addr v0, p1

    return v0
.end method

.method public addIntentExtras(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 96
    const-string/jumbo v0, "org.chromium.content.common.child_service_params.library_process_type"

    iget v1, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;->mLibraryProcessType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

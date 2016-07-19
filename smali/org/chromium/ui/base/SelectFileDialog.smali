.class public Lorg/chromium/ui/base/SelectFileDialog;
.super Ljava/lang/Object;
.source "SelectFileDialog.java"

# interfaces
.implements Lorg/chromium/ui/base/WindowAndroid$IntentCallback;
.implements Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sOverrideWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;


# instance fields
.field private mAllowMultiple:Z

.field private mCameraOutputUri:Landroid/net/Uri;

.field private mCapture:Z

.field private mFileTypes:Ljava/util/List;

.field private final mNativeSelectFileDialog:J

.field private mSupportsAudioCapture:Z

.field private mSupportsImageCapture:Z

.field private mSupportsVideoCapture:Z

.field private mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/chromium/ui/base/SelectFileDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/ui/base/SelectFileDialog;->$assertionsDisabled:Z

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/ui/base/SelectFileDialog;->sOverrideWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(J)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-wide p1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mNativeSelectFileDialog:J

    .line 72
    return-void
.end method

.method private acceptSpecificType(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mFileTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 395
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    const/4 v0, 0x1

    .line 399
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private acceptsSpecificType(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 378
    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mFileTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mFileTypes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method static synthetic access$100(Lorg/chromium/ui/base/SelectFileDialog;)Lorg/chromium/ui/base/WindowAndroid;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/ui/base/SelectFileDialog;Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/chromium/ui/base/SelectFileDialog;->getFileForImageCapture(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/ui/base/SelectFileDialog;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$302(Lorg/chromium/ui/base/SelectFileDialog;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$400(Lorg/chromium/ui/base/SelectFileDialog;)Z
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->captureCamera()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/chromium/ui/base/SelectFileDialog;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V

    return-void
.end method

.method static synthetic access$600(Lorg/chromium/ui/base/SelectFileDialog;ZLandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lorg/chromium/ui/base/SelectFileDialog;->launchSelectFileWithCameraIntent(ZLandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lorg/chromium/ui/base/SelectFileDialog;)J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mNativeSelectFileDialog:J

    return-wide v0
.end method

.method static synthetic access$800(Lorg/chromium/ui/base/SelectFileDialog;J[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/ui/base/SelectFileDialog;->nativeOnMultipleFilesSelected(J[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lorg/chromium/ui/base/SelectFileDialog;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/ui/base/SelectFileDialog;->nativeOnFileSelected(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private captureCamcorder()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCapture:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "video/*"

    invoke-direct {p0, v0}, Lorg/chromium/ui/base/SelectFileDialog;->acceptsSpecificType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private captureCamera()Z
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCapture:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "image/*"

    invoke-direct {p0, v0}, Lorg/chromium/ui/base/SelectFileDialog;->acceptsSpecificType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private captureMicrophone()Z
    .locals 1

    .prologue
    .line 390
    iget-boolean v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCapture:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "audio/*"

    invoke-direct {p0, v0}, Lorg/chromium/ui/base/SelectFileDialog;->acceptsSpecificType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static create(J)Lorg/chromium/ui/base/SelectFileDialog;
    .locals 2

    .prologue
    .line 452
    new-instance v0, Lorg/chromium/ui/base/SelectFileDialog;

    invoke-direct {v0, p0, p1}, Lorg/chromium/ui/base/SelectFileDialog;-><init>(J)V

    return-object v0
.end method

.method private getFileForImageCapture(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 255
    sget-boolean v0, Lorg/chromium/ui/base/SelectFileDialog;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 256
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ".jpg"

    invoke-static {p1}, Lorg/chromium/ui/UiUtils;->getDirectoryForImageCapture(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 258
    return-object v0
.end method

.method private launchSelectFileIntent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    const-string/jumbo v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    .line 130
    iget-boolean v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsImageCapture:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;

    invoke-direct {v0, p0, v2}, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;-><init>(Lorg/chromium/ui/base/SelectFileDialog;Lorg/chromium/ui/base/SelectFileDialog$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-direct {p0, v0, v2}, Lorg/chromium/ui/base/SelectFileDialog;->launchSelectFileWithCameraIntent(ZLandroid/content/Intent;)V

    goto :goto_0
.end method

.method private launchSelectFileWithCameraIntent(ZLandroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 146
    .line 147
    iget-boolean v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsVideoCapture:Z

    if-eqz v0, :cond_10

    if-eqz p1, :cond_10

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    :goto_0
    iget-object v2, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    const-string/jumbo v3, "android.permission.RECORD_AUDIO"

    invoke-virtual {v2, v3}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    .line 154
    iget-boolean v3, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsAudioCapture:Z

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 155
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    :cond_0
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->captureCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    .line 162
    iget-object v2, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    sget v3, Lorg/chromium/ui/R$string;->low_memory_error:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p2, p0, v3}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 211
    :cond_1
    :goto_1
    return-void

    .line 163
    :cond_2
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->captureCamcorder()Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v0, :cond_b

    .line 164
    iget-object v2, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    sget v3, Lorg/chromium/ui/R$string;->low_memory_error:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, p0, v3}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 169
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    const-string/jumbo v3, "android.intent.category.OPENABLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_4

    iget-boolean v3, p0, Lorg/chromium/ui/base/SelectFileDialog;->mAllowMultiple:Z

    if-eqz v3, :cond_4

    .line 173
    const-string/jumbo v3, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 176
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 177
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->noSpecificType()Z

    move-result v4

    if-nez v4, :cond_6

    .line 181
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowImageTypes()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 182
    if-eqz p2, :cond_5

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_5
    const-string/jumbo v4, "image/*"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    :cond_6
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 195
    const-string/jumbo v4, "*/*"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    if-eqz p2, :cond_7

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_9
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.CHOOSER"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 203
    const-string/jumbo v4, "android.intent.extra.INITIAL_INTENTS"

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/content/Intent;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 206
    :cond_a
    const-string/jumbo v0, "android.intent.extra.INTENT"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 208
    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    sget v2, Lorg/chromium/ui/R$string;->low_memory_error:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V

    goto/16 :goto_1

    .line 165
    :cond_b
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->captureMicrophone()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 166
    iget-object v2, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    sget v3, Lorg/chromium/ui/R$string;->low_memory_error:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, p0, v3}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_1

    .line 184
    :cond_c
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowVideoTypes()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 185
    if-eqz v0, :cond_d

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_d
    const-string/jumbo v4, "video/*"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 187
    :cond_e
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowAudioTypes()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 188
    if-eqz v1, :cond_f

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_f
    const-string/jumbo v4, "audio/*"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    :cond_10
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private native nativeOnFileNotSelected(J)V
.end method

.method private native nativeOnFileSelected(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeOnMultipleFilesSelected(J[Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method private noSpecificType()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 357
    iget-object v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mFileTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mFileTypes:Ljava/util/List;

    const-string/jumbo v2, "*/*"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onFileNotSelected()V
    .locals 2

    .prologue
    .line 349
    iget-wide v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mNativeSelectFileDialog:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/ui/base/SelectFileDialog;->nativeOnFileNotSelected(J)V

    .line 350
    return-void
.end method

.method private selectFile([Ljava/lang/String;ZZLorg/chromium/ui/base/WindowAndroid;)V
    .locals 3

    .prologue
    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mFileTypes:Ljava/util/List;

    .line 94
    iput-boolean p2, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCapture:Z

    .line 95
    iput-boolean p3, p0, Lorg/chromium/ui/base/SelectFileDialog;->mAllowMultiple:Z

    .line 96
    sget-object v0, Lorg/chromium/ui/base/SelectFileDialog;->sOverrideWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    if-nez v0, :cond_4

    move-object v0, p4

    :goto_0
    iput-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    .line 98
    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/chromium/ui/base/WindowAndroid;->canResolveActivity(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsImageCapture:Z

    .line 100
    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/chromium/ui/base/WindowAndroid;->canResolveActivity(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsVideoCapture:Z

    .line 102
    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/chromium/ui/base/WindowAndroid;->canResolveActivity(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsAudioCapture:Z

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    iget-boolean v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsImageCapture:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowImageTypes()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsVideoCapture:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowVideoTypes()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string/jumbo v1, "android.permission.CAMERA"

    invoke-virtual {p4, v1}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 110
    const-string/jumbo v1, "android.permission.CAMERA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_2
    iget-boolean v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsAudioCapture:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowAudioTypes()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {p4, v1}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 114
    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 118
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->launchSelectFileIntent()V

    .line 123
    :goto_1
    return-void

    .line 96
    :cond_4
    sget-object v0, Lorg/chromium/ui/base/SelectFileDialog;->sOverrideWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    goto :goto_0

    .line 120
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p4, v0, p0}, Lorg/chromium/ui/base/WindowAndroid;->requestPermissions([Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)V

    goto :goto_1
.end method

.method public static setWindowAndroidForTests(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    .prologue
    .line 79
    sput-object p0, Lorg/chromium/ui/base/SelectFileDialog;->sOverrideWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    .line 80
    return-void
.end method

.method private shouldShowAudioTypes()Z
    .locals 2

    .prologue
    .line 374
    const-string/jumbo v0, "audio/*"

    const-string/jumbo v1, "audio/"

    invoke-direct {p0, v0, v1}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private shouldShowImageTypes()Z
    .locals 2

    .prologue
    .line 366
    const-string/jumbo v0, "image/*"

    const-string/jumbo v1, "image/"

    invoke-direct {p0, v0, v1}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private shouldShowTypes(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 361
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->noSpecificType()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mFileTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 362
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p2}, Lorg/chromium/ui/base/SelectFileDialog;->acceptSpecificType(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private shouldShowVideoTypes()Z
    .locals 2

    .prologue
    .line 370
    const-string/jumbo v0, "video/*"

    const-string/jumbo v1, "video/"

    invoke-direct {p0, v0, v1}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onIntentCompleted(Lorg/chromium/ui/base/WindowAndroid;ILandroid/content/ContentResolver;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/16 v2, 0x12

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 273
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 274
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V

    .line 335
    :goto_0
    return-void

    .line 278
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p4}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    if-nez v1, :cond_3

    .line 287
    :cond_1
    const-string/jumbo v0, "file"

    iget-object v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 289
    :goto_1
    iget-wide v2, p0, Lorg/chromium/ui/base/SelectFileDialog;->mNativeSelectFileDialog:J

    iget-object v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/chromium/ui/base/SelectFileDialog;->nativeOnFileSelected(JLjava/lang/String;Ljava/lang/String;)V

    .line 294
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v2, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Lorg/chromium/ui/base/WindowAndroid;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 287
    :cond_2
    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 302
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_6

    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-virtual {p4}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 304
    invoke-virtual {p4}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    .line 306
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    .line 307
    if-nez v2, :cond_4

    .line 308
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V

    goto :goto_0

    .line 312
    :cond_4
    new-array v3, v2, [Landroid/net/Uri;

    .line 313
    :goto_2
    if-ge v0, v2, :cond_5

    .line 314
    invoke-virtual {v1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v0

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 316
    :cond_5
    new-instance v0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;

    invoke-direct {v0, p0, p3, v5}, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;-><init>(Lorg/chromium/ui/base/SelectFileDialog;Landroid/content/ContentResolver;Z)V

    .line 317
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v3}, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 321
    :cond_6
    const-string/jumbo v1, "file"

    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 322
    iget-wide v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mNativeSelectFileDialog:J

    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/chromium/ui/base/SelectFileDialog;->nativeOnFileSelected(JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 327
    :cond_7
    const-string/jumbo v1, "content"

    invoke-virtual {p4}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 328
    new-instance v1, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;

    invoke-direct {v1, p0, p3, v0}, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;-><init>(Lorg/chromium/ui/base/SelectFileDialog;Landroid/content/ContentResolver;Z)V

    .line 329
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v5, [Landroid/net/Uri;

    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 333
    :cond_8
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V

    .line 334
    sget v0, Lorg/chromium/ui/R$string;->opening_file_error:I

    invoke-virtual {p1, v0}, Lorg/chromium/ui/base/WindowAndroid;->showError(I)V

    goto/16 :goto_0
.end method

.method public onRequestPermissionsResult([Ljava/lang/String;[I)V
    .locals 3

    .prologue
    .line 339
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 340
    aget v1, p2, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCapture:Z

    if-eqz v1, :cond_0

    .line 341
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V

    .line 346
    :goto_1
    return-void

    .line 339
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 345
    :cond_1
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->launchSelectFileIntent()V

    goto :goto_1
.end method

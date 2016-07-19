.class Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;
.super Ljava/lang/Object;
.source "ChildProcessConnectionImpl.java"


# instance fields
.field final mCallback:Lorg/chromium/content/common/IChildProcessCallback;

.field final mCommandLine:[Ljava/lang/String;

.field final mFilesToBeMapped:[Lorg/chromium/content/browser/FileDescriptorInfo;

.field final mSharedRelros:Landroid/os/Bundle;


# direct methods
.method constructor <init>([Ljava/lang/String;[Lorg/chromium/content/browser/FileDescriptorInfo;Lorg/chromium/content/common/IChildProcessCallback;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;->mCommandLine:[Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;->mFilesToBeMapped:[Lorg/chromium/content/browser/FileDescriptorInfo;

    .line 95
    iput-object p3, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    .line 96
    iput-object p4, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;->mSharedRelros:Landroid/os/Bundle;

    .line 97
    return-void
.end method

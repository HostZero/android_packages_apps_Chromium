.class public final Lorg/chromium/chrome/browser/PasswordUIView;
.super Ljava/lang/Object;
.source "PasswordUIView.java"


# instance fields
.field private mNativePasswordUIViewAndroid:J

.field private mObservers:Lorg/chromium/base/ObserverList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/PasswordUIView;->mObservers:Lorg/chromium/base/ObserverList;

    .line 70
    invoke-direct {p0}, Lorg/chromium/chrome/browser/PasswordUIView;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/PasswordUIView;->mNativePasswordUIViewAndroid:J

    .line 71
    return-void
.end method

.method private static createSavedPasswordEntry(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/PasswordUIView$SavedPasswordEntry;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lorg/chromium/chrome/browser/PasswordUIView$SavedPasswordEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/chromium/chrome/browser/PasswordUIView$SavedPasswordEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/PasswordUIView$1;)V

    return-object v0
.end method

.method public static getAccountDashboardURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Lorg/chromium/chrome/browser/PasswordUIView;->nativeGetAccountDashboardURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private native nativeDestroy(J)V
.end method

.method private static native nativeGetAccountDashboardURL()Ljava/lang/String;
.end method

.method private native nativeGetSavedPasswordEntry(JI)Lorg/chromium/chrome/browser/PasswordUIView$SavedPasswordEntry;
.end method

.method private native nativeGetSavedPasswordException(JI)Ljava/lang/String;
.end method

.method private native nativeHandleRemoveSavedPasswordEntry(JI)V
.end method

.method private native nativeHandleRemoveSavedPasswordException(JI)V
.end method

.method private native nativeInit()J
.end method

.method private static native nativeShouldUseSmartLockBranding()Z
.end method

.method private native nativeUpdatePasswordLists(J)V
.end method

.method private passwordExceptionListAvailable(I)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lorg/chromium/chrome/browser/PasswordUIView;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/PasswordUIView$PasswordListObserver;

    .line 83
    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/PasswordUIView$PasswordListObserver;->passwordExceptionListAvailable(I)V

    goto :goto_0

    .line 85
    :cond_0
    return-void
.end method

.method private passwordListAvailable(I)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lorg/chromium/chrome/browser/PasswordUIView;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/PasswordUIView$PasswordListObserver;

    .line 76
    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/PasswordUIView$PasswordListObserver;->passwordListAvailable(I)V

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method public static shouldUseSmartLockBranding()Z
    .locals 1

    .prologue
    .line 146
    invoke-static {}, Lorg/chromium/chrome/browser/PasswordUIView;->nativeShouldUseSmartLockBranding()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final addObserver(Lorg/chromium/chrome/browser/PasswordUIView$PasswordListObserver;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/chromium/chrome/browser/PasswordUIView;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public final destroy()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 153
    iget-wide v0, p0, Lorg/chromium/chrome/browser/PasswordUIView;->mNativePasswordUIViewAndroid:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 154
    iget-wide v0, p0, Lorg/chromium/chrome/browser/PasswordUIView;->mNativePasswordUIViewAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/PasswordUIView;->nativeDestroy(J)V

    .line 155
    iput-wide v2, p0, Lorg/chromium/chrome/browser/PasswordUIView;->mNativePasswordUIViewAndroid:J

    .line 157
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/PasswordUIView;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->clear()V

    .line 158
    return-void
.end method

.method public final getSavedPasswordEntry(I)Lorg/chromium/chrome/browser/PasswordUIView$SavedPasswordEntry;
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lorg/chromium/chrome/browser/PasswordUIView;->mNativePasswordUIViewAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/PasswordUIView;->nativeGetSavedPasswordEntry(JI)Lorg/chromium/chrome/browser/PasswordUIView$SavedPasswordEntry;

    move-result-object v0

    return-object v0
.end method

.method public final getSavedPasswordException(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lorg/chromium/chrome/browser/PasswordUIView;->mNativePasswordUIViewAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/PasswordUIView;->nativeGetSavedPasswordException(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final removeSavedPasswordEntry(I)V
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lorg/chromium/chrome/browser/PasswordUIView;->mNativePasswordUIViewAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/PasswordUIView;->nativeHandleRemoveSavedPasswordEntry(JI)V

    .line 130
    return-void
.end method

.method public final removeSavedPasswordException(I)V
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lorg/chromium/chrome/browser/PasswordUIView;->mNativePasswordUIViewAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/PasswordUIView;->nativeHandleRemoveSavedPasswordException(JI)V

    .line 139
    return-void
.end method

.method public final updatePasswordLists()V
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lorg/chromium/chrome/browser/PasswordUIView;->mNativePasswordUIViewAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/PasswordUIView;->nativeUpdatePasswordLists(J)V

    .line 101
    return-void
.end method

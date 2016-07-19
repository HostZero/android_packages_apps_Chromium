.class Lorg/chromium/media/midi/MidiDeviceAndroid;
.super Ljava/lang/Object;
.source "MidiDeviceAndroid.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field private final mDevice:Landroid/media/midi/MidiDevice;

.field private final mInputPorts:[Lorg/chromium/media/midi/MidiInputPortAndroid;

.field private mIsOpen:Z

.field private final mOutputPorts:[Lorg/chromium/media/midi/MidiOutputPortAndroid;


# direct methods
.method constructor <init>(Landroid/media/midi/MidiDevice;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/media/midi/MidiDeviceAndroid;->mIsOpen:Z

    .line 44
    iput-object p1, p0, Lorg/chromium/media/midi/MidiDeviceAndroid;->mDevice:Landroid/media/midi/MidiDevice;

    .line 47
    invoke-virtual {p0}, Lorg/chromium/media/midi/MidiDeviceAndroid;->getInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->getInputPortCount()I

    move-result v0

    new-array v0, v0, [Lorg/chromium/media/midi/MidiOutputPortAndroid;

    iput-object v0, p0, Lorg/chromium/media/midi/MidiDeviceAndroid;->mOutputPorts:[Lorg/chromium/media/midi/MidiOutputPortAndroid;

    move v0, v1

    .line 48
    :goto_0
    iget-object v2, p0, Lorg/chromium/media/midi/MidiDeviceAndroid;->mOutputPorts:[Lorg/chromium/media/midi/MidiOutputPortAndroid;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 49
    iget-object v2, p0, Lorg/chromium/media/midi/MidiDeviceAndroid;->mOutputPorts:[Lorg/chromium/media/midi/MidiOutputPortAndroid;

    new-instance v3, Lorg/chromium/media/midi/MidiOutputPortAndroid;

    invoke-direct {v3, p1, v0}, Lorg/chromium/media/midi/MidiOutputPortAndroid;-><init>(Landroid/media/midi/MidiDevice;I)V

    aput-object v3, v2, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/media/midi/MidiDeviceAndroid;->getInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    move-result v0

    new-array v0, v0, [Lorg/chromium/media/midi/MidiInputPortAndroid;

    iput-object v0, p0, Lorg/chromium/media/midi/MidiDeviceAndroid;->mInputPorts:[Lorg/chromium/media/midi/MidiInputPortAndroid;

    .line 53
    :goto_1
    iget-object v0, p0, Lorg/chromium/media/midi/MidiDeviceAndroid;->mInputPorts:[Lorg/chromium/media/midi/MidiInputPortAndroid;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 54
    iget-object v0, p0, Lorg/chromium/media/midi/MidiDeviceAndroid;->mInputPorts:[Lorg/chromium/media/midi/MidiInputPortAndroid;

    new-instance v2, Lorg/chromium/media/midi/MidiInputPortAndroid;

    invoke-direct {v2, p1, v1}, Lorg/chromium/media/midi/MidiInputPortAndroid;-><init>(Landroid/media/midi/MidiDevice;I)V

    aput-object v2, v0, v1

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 56
    :cond_1
    return-void
.end method

.method private getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/chromium/media/midi/MidiDeviceAndroid;->mDevice:Landroid/media/midi/MidiDevice;

    invoke-virtual {v0}, Landroid/media/midi/MidiDevice;->getInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->getProperties()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method close()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lorg/chromium/media/midi/MidiDeviceAndroid;->mIsOpen:Z

    .line 70
    iget-object v2, p0, Lorg/chromium/media/midi/MidiDeviceAndroid;->mInputPorts:[Lorg/chromium/media/midi/MidiInputPortAndroid;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 71
    invoke-virtual {v4}, Lorg/chromium/media/midi/MidiInputPortAndroid;->close()V

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_0
    iget-object v1, p0, Lorg/chromium/media/midi/MidiDeviceAndroid;->mOutputPorts:[Lorg/chromium/media/midi/MidiOutputPortAndroid;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 74
    invoke-virtual {v3}, Lorg/chromium/media/midi/MidiOutputPortAndroid;->close()V

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 76
    :cond_1
    return-void
.end method

.method getInfo()Landroid/media/midi/MidiDeviceInfo;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/chromium/media/midi/MidiDeviceAndroid;->mDevice:Landroid/media/midi/MidiDevice;

    invoke-virtual {v0}, Landroid/media/midi/MidiDevice;->getInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method getInputPorts()[Lorg/chromium/media/midi/MidiInputPortAndroid;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/chromium/media/midi/MidiDeviceAndroid;->mInputPorts:[Lorg/chromium/media/midi/MidiInputPortAndroid;

    return-object v0
.end method

.method getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string/jumbo v0, "manufacturer"

    invoke-direct {p0, v0}, Lorg/chromium/media/midi/MidiDeviceAndroid;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getOutputPorts()[Lorg/chromium/media/midi/MidiOutputPortAndroid;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/chromium/media/midi/MidiDeviceAndroid;->mOutputPorts:[Lorg/chromium/media/midi/MidiOutputPortAndroid;

    return-object v0
.end method

.method getProduct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string/jumbo v0, "product"

    invoke-direct {p0, v0}, Lorg/chromium/media/midi/MidiDeviceAndroid;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-string/jumbo v0, "version"

    invoke-direct {p0, v0}, Lorg/chromium/media/midi/MidiDeviceAndroid;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isOpen()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lorg/chromium/media/midi/MidiDeviceAndroid;->mIsOpen:Z

    return v0
.end method

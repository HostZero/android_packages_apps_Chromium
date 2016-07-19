.class Lorg/chromium/media/midi/MidiOutputPortAndroid;
.super Ljava/lang/Object;
.source "MidiOutputPortAndroid.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field private final mDevice:Landroid/media/midi/MidiDevice;

.field private final mIndex:I

.field private mPort:Landroid/media/midi/MidiInputPort;


# direct methods
.method constructor <init>(Landroid/media/midi/MidiDevice;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/chromium/media/midi/MidiOutputPortAndroid;->mDevice:Landroid/media/midi/MidiDevice;

    .line 48
    iput p2, p0, Lorg/chromium/media/midi/MidiOutputPortAndroid;->mIndex:I

    .line 49
    return-void
.end method


# virtual methods
.method close()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/chromium/media/midi/MidiOutputPortAndroid;->mPort:Landroid/media/midi/MidiInputPort;

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 89
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/midi/MidiOutputPortAndroid;->mPort:Landroid/media/midi/MidiInputPort;

    invoke-virtual {v0}, Landroid/media/midi/MidiInputPort;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/media/midi/MidiOutputPortAndroid;->mPort:Landroid/media/midi/MidiInputPort;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method open()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 57
    iget-object v1, p0, Lorg/chromium/media/midi/MidiOutputPortAndroid;->mPort:Landroid/media/midi/MidiInputPort;

    if-eqz v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 60
    :cond_1
    iget-object v1, p0, Lorg/chromium/media/midi/MidiOutputPortAndroid;->mDevice:Landroid/media/midi/MidiDevice;

    iget v2, p0, Lorg/chromium/media/midi/MidiOutputPortAndroid;->mIndex:I

    invoke-virtual {v1, v2}, Landroid/media/midi/MidiDevice;->openInputPort(I)Landroid/media/midi/MidiInputPort;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/media/midi/MidiOutputPortAndroid;->mPort:Landroid/media/midi/MidiInputPort;

    .line 61
    iget-object v1, p0, Lorg/chromium/media/midi/MidiOutputPortAndroid;->mPort:Landroid/media/midi/MidiInputPort;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method send([B)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 69
    iget-object v0, p0, Lorg/chromium/media/midi/MidiOutputPortAndroid;->mPort:Landroid/media/midi/MidiInputPort;

    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 73
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/midi/MidiOutputPortAndroid;->mPort:Landroid/media/midi/MidiInputPort;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/midi/MidiInputPort;->send([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 76
    const-string/jumbo v1, "media_midi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "MidiOutputPortAndroid.send: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

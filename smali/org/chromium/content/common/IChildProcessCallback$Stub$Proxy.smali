.class Lorg/chromium/content/common/IChildProcessCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IChildProcessCallback.java"

# interfaces
.implements Lorg/chromium/content/common/IChildProcessCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lorg/chromium/content/common/IChildProcessCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 146
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/chromium/content/common/IChildProcessCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public establishSurfacePeer(ILandroid/view/Surface;II)V
    .locals 5

    .prologue
    .line 159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 162
    :try_start_0
    const-string/jumbo v0, "org.chromium.content.common.IChildProcessCallback"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    if-eqz p2, :cond_0

    .line 165
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    .line 171
    :goto_0
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget-object v0, p0, Lorg/chromium/content/common/IChildProcessCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 174
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 178
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 179
    return-void

    .line 169
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 178
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getSurfaceTextureSurface(I)Lorg/chromium/content/common/SurfaceWrapper;
    .locals 5

    .prologue
    .line 245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 246
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 249
    :try_start_0
    const-string/jumbo v0, "org.chromium.content.common.IChildProcessCallback"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget-object v0, p0, Lorg/chromium/content/common/IChildProcessCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 252
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 253
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    sget-object v0, Lorg/chromium/content/common/SurfaceWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/common/SurfaceWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 262
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 264
    return-object v0

    .line 257
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 261
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 262
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getViewSurface(I)Lorg/chromium/content/common/SurfaceWrapper;
    .locals 5

    .prologue
    .line 183
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 187
    :try_start_0
    const-string/jumbo v0, "org.chromium.content.common.IChildProcessCallback"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget-object v0, p0, Lorg/chromium/content/common/IChildProcessCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 190
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 191
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    sget-object v0, Lorg/chromium/content/common/SurfaceWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/common/SurfaceWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 200
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 202
    return-object v0

    .line 195
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 200
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onDownloadStarted(ZI)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 272
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 274
    :try_start_0
    const-string/jumbo v3, "org.chromium.content.common.IChildProcessCallback"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 275
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    iget-object v0, p0, Lorg/chromium/content/common/IChildProcessCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 278
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 282
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 283
    return-void

    .line 281
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 282
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public registerSurfaceTextureSurface(IILandroid/view/Surface;)V
    .locals 5

    .prologue
    .line 206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 209
    :try_start_0
    const-string/jumbo v0, "org.chromium.content.common.IChildProcessCallback"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    if-eqz p3, :cond_0

    .line 213
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    const/4 v0, 0x0

    invoke-virtual {p3, v1, v0}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    .line 219
    :goto_0
    iget-object v0, p0, Lorg/chromium/content/common/IChildProcessCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 220
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 224
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 225
    return-void

    .line 217
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 224
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public unregisterSurfaceTextureSurface(II)V
    .locals 5

    .prologue
    .line 229
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 230
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 232
    :try_start_0
    const-string/jumbo v0, "org.chromium.content.common.IChildProcessCallback"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-object v0, p0, Lorg/chromium/content/common/IChildProcessCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 236
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 240
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 241
    return-void

    .line 239
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 240
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

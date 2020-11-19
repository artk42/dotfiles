use crate::common::*;

#[derive(Debug)]
pub(crate) struct Import {
  album:        String,
  album_artist: String,
  path:         PathBuf,
  title:        String,
  track_number: u32,
  disc_number:  u32,
}

impl Import {
  pub(crate) fn album_artist(&self) -> &str {
    &self.album_artist
  }

  pub(crate) fn album(&self) -> &str {
    &self.album
  }

  pub(crate) fn track_number(&self) -> u32 {
    self.track_number
  }

  pub(crate) fn disc_number(&self) -> u32 {
    self.disc_number
  }

  pub(crate) fn path(&self) -> &Path {
    &self.path
  }

  pub(crate) fn destination(&self, library: &Library, id: Id) -> PathBuf {
    library.mp3_path(Mp3::from_id(id))
  }
}

impl TryFrom<&Path> for Import {
  type Error = Error;

  #[throws]
  fn try_from(path: &Path) -> Self {
    let path = path.to_owned();

    let tag = id3::Tag::read_from_path(&path)?;

    let missing = || anyhow!("MP3 file missing metadata: `{}`", path.display());

    let title = tag.title().ok_or_else(missing)?.to_owned();
    let disc_number = tag.disc().ok_or_else(missing)? - 1;
    let track_number = tag.track().ok_or_else(missing)? - 1;
    let album = tag.album().ok_or_else(missing)?.to_owned();
    let album_artist = tag.album_artist().ok_or_else(missing)?.to_owned();

    Self {
      path,
      album,
      album_artist,
      title,
      track_number,
      disc_number,
    }
  }
}

require "server_time"

describe TimeError do
  it "compares the difference between a remote clock and the local clock" do
    fake_requester = double :requester
    allow(fake_requester).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).and_return('{"abbreviation":"BST","client_ip":"81.140.58.104","datetime":"2023-04-21T11:15:36.918344+01:00","day_of_week":5,"day_of_year":111,"dst":true,"dst_from":"2023-03-26T01:00:00+00:00","dst_offset":3600,"dst_until":"2023-10-29T01:00:00+00:00","raw_offset":0,"timezone":"Europe/London","unixtime":1682072136,"utc_datetime":"2023-04-21T10:15:36.918344+00:00","utc_offset":"+01:00","week_number":16}')
    time = Time.new(2023, 04, 21, 11, 15, 36)
    time_error = TimeError.new(fake_requester)
    expect(time_error.error(time)).to eq 0.918344
  end
end
